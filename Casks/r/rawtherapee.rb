cask "rawtherapee" do
  version "5.10"
  sha256 "013cd1e98d06023c85c304ce3e99c3ffc14430fb7a366b516697e654c0508c79"

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
