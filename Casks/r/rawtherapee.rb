cask "rawtherapee" do
  version "5.13"
  sha256 "795a32a688afa5b127dfd768c25c77649859ababa206352e865f6587c66c45a7"

  url "https://rawtherapee.com/shared/builds/mac/RawTherapee_MacOS_26.0_Universal_#{version}.zip"
  name "RawTherapee"
  desc "RAW photo processor"
  homepage "https://rawtherapee.com/"

  livecheck do
    url "https://rawtherapee.com/shared/builds/mac/"
    regex(/href=.*?RawTherapee[._-]macOS.+(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: :tahoe
  container nested: "RawTherapee_MacOS_26.0_Universal_#{version}/RawTherapee_macOS_26.0_Universal_#{version}.dmg"

  app "RawTherapee.app"
  binary "#{appdir}/RawTherapee.app/Contents/MacOS/rawtherapee-cli"

  zap trash: "~/Library/Application Support/RawTherapee"
end
