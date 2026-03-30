cask "firebird" do
  arch arm: "arm64", intel: "x64"

  version "5.0.3,1683-0"
  sha256 arm:   "07e06ba4c0f13c9c39b65b854d1e66b59bfcfbd1513c22e753f2d32421cc7fad",
         intel: "abc6108edd0dc37028db54cbae7ad86b75853e8534f2917a17b575d42dc3d08f"

  url "https://github.com/FirebirdSQL/firebird/releases/download/v#{version.csv.first}/Firebird-#{version.csv.first}.#{version.csv.second}-macos-#{arch}.pkg",
      verified: "github.com/FirebirdSQL/firebird/"
  name "Firebird"
  desc "Relational database"
  homepage "https://www.firebirdsql.org/"

  livecheck do
    url :url
    regex(/Firebird-(\d+(?:\.\d+)+)\.(\d+-\d+)-macos-(?:arm64|x64)\.pkg/i)
    strategy :github_releases do |releases, regex|
      releases.filter_map do |release|
        assets = release["assets"] || []
        asset = assets.find { |a| a["name"]&.match?(regex) }
        next unless asset

        match = asset["name"].match(regex)
        next unless match

        "#{match[1]},#{match[2]}"
      end
    end
  end

  pkg "Firebird-#{version.csv.first}.#{version.csv.second}-macos-#{arch}.pkg"

  uninstall_postflight do
    %w[Users Groups].each do |type|
      path = "/Local/Default/#{type}/firebird"

      # Check if exists (ignore failure)
      exists = system_command("/usr/bin/dscl",
                              args:         ["localhost", "-read", path],
                              sudo:         true,
                              must_succeed: false).success?

      next unless exists

      # Delete (must succeed)
      system_command "/usr/bin/dscl",
                     args:         ["localhost", "-delete", path],
                     sudo:         true,
                     must_succeed: true
    end
  end

  uninstall launchctl: "org.firebird.gds",
            pkgutil:   "com.firebirdsql.Firebird",
            delete:    [
              "/Library/Frameworks/Firebird.framework",
              "/Library/LaunchDaemons/org.firebird.gds.plist",
            ]
end
