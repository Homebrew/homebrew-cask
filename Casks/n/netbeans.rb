cask "netbeans" do
  arch arm: "arm64", intel: "x86_64"

  version "29,29-build1"
  sha256 arm:   "5a3dcad4edc2a327b7ef25f0c299060f41879f2ca482e27281700ae9ee14e776",
         intel: "6c51c350d60542ad832a387314469e65aee637c054bdcd443bfb69346432eb05"

  url "https://github.com/Friends-of-Apache-NetBeans/netbeans-installers/releases/download/v#{version.csv.second || version.csv.first}/Apache-NetBeans-#{version.csv.first}-#{arch}.pkg",
      verified: "github.com/Friends-of-Apache-NetBeans/netbeans-installers/"
  name "NetBeans IDE"
  desc "Development environment, tooling platform and application framework"
  homepage "https://netbeans.apache.org/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)*(?:[._-]build\d+)?)/Apache[._-]NetBeans[._-]v?(\d+(?:\.\d+)*)[._-]#{arch}\.pkg}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        (match[2] == match[1]) ? match[1] : "#{match[2]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

  pkg "Apache-NetBeans-#{version.csv.first}-#{arch}.pkg"

  uninstall pkgutil: [
              "org.apache.netbeans",
              "org.netbeans.ide.*|glassfish.*",
            ],
            delete:  "/Applications/NetBeans"

  zap trash: [
    "~/Library/Application Support/NetBeans",
    "~/Library/Caches/NetBeans",
  ]
end
