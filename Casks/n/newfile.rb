cask "newfile" do
  version "0.2.0"
  sha256 "2458aa21a538eb00857f32ca17afa575e61381aaf097f1b3fb3ca3d37b02b8ef"

  url "https://github.com/mariusgm/newfile/releases/download/v#{version}/NewFile.dmg"
  name "NewFile"
  desc "'New File' button for Finder"
  homepage "https://github.com/mariusgm/newfile"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "NewFile.app"

  zap trash: [
    "~/Library/Containers/dev.newfile.NewFile",
    "~/Library/Containers/dev.newfile.NewFile.NewFileExtension",
    "~/Library/Group Containers/Q7VD7MTRL8.group.dev.newfile.NewFile",
  ]
end
