cask "scrivener" do
  version "3.2.2,14632"
  sha256 "80e25191dd0ef9791b8c5347022fb52b8912ab29a5283ad75b262931f02930e7"

  url "https://scrivener.s3.amazonaws.com/mac_updates/Scrivener_1012_#{version.after_comma}.zip",
      verified: "scrivener.s3.amazonaws.com/"
  name "Scrivener"
  desc "Word processing software with a typewriter style"
  homepage "https://literatureandlatte.com/scrivener.php"

  livecheck do
    url "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Scrivener.app"
end
