cask "rawtherapee" do
  version "5.10"
  sha256 "36f061dc293f8141d20910dde62c976fa57c3dd3f8708a628b3aece9c9ca14cf"

  url "https://www.rawtherapee.com/shared/builds/mac/RawTherapee_macOS_13.3_Universal_#{version}.zip"
  name "RawTherapee"
  desc "RAW photo processor"
  homepage "https://rawtherapee.com/"

  livecheck do
    url "https://rawtherapee.com/shared/builds/mac/"
    regex(/href=.*?RawTherapee[._-]macOS.+(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :big_sur"
  container nested: "RawTherapee_macOS_13.3_Universal_#{version}_folder/RawTherapee_macOS_13.3_Universal_#{version}.dmg"

  app "RawTherapee.app"

  zap trash: "~/Library/Application Support/RawTherapee"
end
