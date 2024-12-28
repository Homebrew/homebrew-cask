cask "find-any-file" do
  version "2.5.4"
  sha256 "ded32d0c8589562a721c3708f7a1425923d3f96dc19af7f2e5ef3e878aebea54"

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
