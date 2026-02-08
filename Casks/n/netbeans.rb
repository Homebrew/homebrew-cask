cask "netbeans" do
  arch arm: "arm64", intel: "x86_64"

  version "28,28-build2"
  sha256 arm:   "7c64cfa68c064d54f750102aa0590c65d4062e829ea33d9dbceb867b06c2c886",
         intel: "fc9976c8b55e1a81586d77c3b26d342c16f5912b4e385d8ea9e57294218f297e"

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
