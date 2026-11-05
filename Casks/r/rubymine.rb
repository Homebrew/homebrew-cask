cask "rubymine" do
  arch arm: "-aarch64"

  version "2026.3,263.7307.205"
  sha256 arm:   "0d82dc7bd4a839e83d91b1b517b4a3c2ee8aed00759e6ddda22f14a14ed767ec",
         intel: "b52642b50bbdb581f6d6d74962649494abfb5c7163baa441f399b8aab1ac86c7"

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.csv.first}#{arch}.dmg"
  name "RubyMine"
  desc "Ruby on Rails IDE"
  homepage "https://www.jetbrains.com/ruby/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release"
    strategy :json do |json|
      json["RM"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "RubyMine.app"
  command_wrapper "rubymine",
                  executable: "/usr/bin/open",
                  args:       ["-na", "RubyMine.app", "--args"]

  uninstall launchctl: "application.com.jetbrains.app.daemon.*",
            quit:      "com.jetbrains.rubymine"

  zap trash: [
    "~/Library/Application Support/RubyMine#{version.major_minor}",
    "~/Library/Caches/RubyMine#{version.major_minor}",
    "~/Library/Logs/RubyMine#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.rubymine.plist",
    "~/Library/Preferences/RubyMine#{version.major_minor}",
  ]
end
