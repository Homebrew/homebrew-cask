cask "find-any-file" do
  version "2.5.5,394"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://s3.amazonaws.com/files.tempel.org/FindAnyFile_#{version.csv.first}.zip",
      verified: "s3.amazonaws.com/"
  name "Find Any File"
  desc "File finder"
  homepage "https://findanyfile.app/"

  livecheck do
    url "https://findanyfile.app/appcast#{version.major}.php"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "Find Any File.app"

  zap trash: "~/Library/Application Support/Find Any File"
end
