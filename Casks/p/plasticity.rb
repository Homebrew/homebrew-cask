cask "plasticity" do
  arch arm: "arm64", intel: "x64"

  version "26.2.3"
  sha256 arm:   "1ae56d7b31e6bf3d25fcac8657eb39113e9d3463e0b46794f97b2e6801b94bef",
         intel: "94ec4e4b84e66858166cc7edc194451a53589c13955ce5bed95465e4ba863692"

  url "https://github.com/nkallen/plasticity/releases/download/v#{version}/Plasticity-darwin-#{arch}-#{version}.zip"
  name "Plasticity"
  desc "3D modeling software for concept artists and designers"
  homepage "https://www.plasticity.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Plasticity.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.plasticity.sfl*",
        "~/Library/Application Support/Plasticity",
        "~/Library/Logs/Plasticity",
        "~/Library/Preferences/com.electron.plasticity.plist",
      ],
      rmdir: "~/.plasticity"
end
