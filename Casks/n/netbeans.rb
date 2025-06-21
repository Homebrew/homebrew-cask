cask "netbeans" do
  arch arm: "aarch64", intel: "x86_64"

  version "26,26-build1"
  sha256 arm:   "174943c8f822ad08621075b3c20f97ba2fb27e91f6ef5961ccd92228a088607d",
         intel: "99285de7707eecbe49ffd60bf01fd30441ebad4027faaf503ca323097396787f"

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
