cask "find-any-file" do
  version "2.1.1"
  sha256 "5e444bcb16f89bbb44ded8da6f84d494d081ef07d8949ac2287ac80d1cc2a585"

  # s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/files.tempel.org/FindAnyFile_#{version}.zip"
  appcast "https://findanyfile.app/appcast2.php"
  name "Find Any File"
  desc "File finder"
  homepage "https://apps.tempel.org/FindAnyFile/"

  app "Find Any File.app"

  zap trash: "~/Library/Application Support/Find Any File"
end
