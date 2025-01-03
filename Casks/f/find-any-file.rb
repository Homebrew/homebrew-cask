cask "find-any-file" do
  version "2.5.5"
  sha256 "57ef75b7ee92e9d27a570d4e878e4e1ccd2805456411f089bf0459224c555f2b"

  url "https://s3.amazonaws.com/files.tempel.org/FindAnyFile_#{version}.zip",
      verified: "s3.amazonaws.com/"
  name "Find Any File"
  desc "File finder"
  homepage "https://findanyfile.app/"

  livecheck do
    url :homepage
    regex(/href=.*?FindAnyFile[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :el_capitan"

  app "Find Any File.app"

  zap trash: "~/Library/Application Support/Find Any File"
end
