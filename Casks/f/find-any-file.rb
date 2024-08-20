cask "find-any-file" do
  version "2.5.2"
  sha256 "384aaa06852bced198a728c01d02440d5efb3eaf40a6c6dd0f668f75a90850b0"

  url "https://s3.amazonaws.com/files.tempel.org/FindAnyFile_#{version}.zip",
      verified: "s3.amazonaws.com/"
  name "Find Any File"
  desc "File finder"
  homepage "https://apps.tempel.org/FindAnyFile/"

  livecheck do
    url :homepage
    regex(/href=.*?FindAnyFile[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :el_capitan"

  app "Find Any File.app"

  zap trash: "~/Library/Application Support/Find Any File"
end
