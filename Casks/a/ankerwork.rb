cask "ankerwork" do
  version "2.5.7"
  sha256 :no_check

  url "https://ankerwork.s3.us-west-2.amazonaws.com/prod/AnkerWork_Official.dmg",
      verified: "ankerwork.s3.us-west-2.amazonaws.com/prod/"
  name "AnkerWork"
  desc "Webcam & audio device software"
  homepage "https://us.ankerwork.com/pages/download-software"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :mojave"

  app "AnkerWork.app"

  zap trash: "~/Library/Application Support/AnkerWork"
end
