cask "netbeans" do
  arch arm: "arm64", intel: "x86_64"

  version "27,27-build1"
  sha256 arm:   "1b5471269111bd546854008d8b0e067aa7fc72b885563dff99c35274c956233d",
         intel: "7552a2a365e828bcf40ebddd561c75ed10542474b9329f5412aded6bab437dd8"

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
