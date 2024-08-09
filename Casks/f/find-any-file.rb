cask "find-any-file" do
  version "2.5.1"
  sha256 "3a8c53f6076ed2fb9fa65ee2a6bb43cfb2a634fe419fcfcfd4f776f5e5af9ebb"

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
