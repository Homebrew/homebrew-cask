cask "find-any-file" do
  version "2.5.3"
  sha256 "1cc815568f782674f908b098cca2a343deff89aa7d003d0023d2d8950b0dda08"

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
