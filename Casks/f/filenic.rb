cask "filenic" do
  version "1.0.5"
  sha256 "bc5ed45d6792df5ccdeab6259fdf0fd5dcf88c946cd7934aa28ff76be7979512"

  url "https://github.com/0126kjw/FileNic/releases/download/v#{version}/FileNic.app.zip"
  name "FileNic"
  desc "Menu bar tool for fixing Korean filename encoding through drag-and-drop"
  homepage "https://github.com/0126kjw/FileNic"

  depends_on macos: ">= :ventura"

  app "FileNic.app"

  zap trash: "~/Library/Application Support/FileNic"
end
