cask "jasper" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "1.1.3"
    sha256 "8c57a745201f138e0e717264025ae5fc20fc1c8c1087f4331ba751efc4903d20"
  end
  on_intel do
    version "1.1.2"
    sha256 "dbbe65c2323d11bb94ec5bf0168b39e1c4cc61f040bd62c50200b07c77942437"
  end

  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac_#{arch}.zip",
      verified: "github.com/jasperapp/jasper/"
  name "Jasper"
  desc "Issue reader for GitHub"
  homepage "https://jasperapp.io/"

  # Not every release contains binaries for all architectures
  livecheck do
    url :url
    regex(/^jasper[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.zip$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  app "Jasper.app"

  zap trash: [
    "~/Library/Application Support/jasper",
    "~/Library/Containers/io.jasperapp",
  ]
end
