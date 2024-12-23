cask "fastdmg" do
  version "1.0.2"
  sha256 :no_check

  url "https://sveinbjorn.org/files/software/FastDMG.zip"
  name "FastDMG"
  desc "Very fast and reliable replacement for Apple's inefficient DiskImageMounter app"
  homepage "https://sveinbjorn.org/fastdmg"

  livecheck do
    url "https://github.com/sveinbjornt/FastDMG"
    strategy :github_latest
  end

  depends_on macos: ">= :el_capitan"

  app "FastDMG.app"

  zap trash: "~/Library/Preferences/org.sveinbjorn.FastDMG.plist"
end
