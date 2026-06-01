cask "netbeans" do
  arch arm: "arm64", intel: "x86_64"

  version "30,nb30-zulu25,zulu-25"
  sha256 arm:   "d7af84ab960540e8a0769e28b400ceac6cb87bd9d2626487db3a08d0cb52f929",
         intel: "5ac8845161fc9bb43c728e586eb29e0766e950f61685153039c7cf981598c4ba"

  url "https://github.com/Friends-of-Apache-NetBeans/netbeans-installers/releases/download/#{version.csv.second}/Apache-NetBeans-#{version.csv.first}-#{version.csv.third}-#{arch}.pkg",
      verified: "github.com/Friends-of-Apache-NetBeans/netbeans-installers/"
  name "NetBeans IDE"
  desc "Development environment, tooling platform and application framework"
  homepage "https://netbeans.apache.org/"

  livecheck do
    url :url
    regex(%r{
      /download/(nb\d+(?:-zulu-?\d+)?)/
      Apache-NetBeans[._-]v?(\d+(?:\.\d+)*)[._-](zulu-?v?\d+(?:\.\d+)*)-#{arch}\.pkg
    }ix)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]},#{match[3]}"
      end
    end
  end

  depends_on macos: :big_sur

  pkg "Apache-NetBeans-#{version.csv.first}-#{version.csv.third}-#{arch}.pkg"

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
