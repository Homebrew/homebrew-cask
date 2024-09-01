cask "rawtherapee" do
  version "5.11"
  sha256 "a3e928cafc7a00a090dcf50b84cd45af48ce8f457269d601d301072df7e0f7af"

  url "https://www.rawtherapee.com/shared/builds/mac/RawTherapee_macOS_12.3_Universal_#{version}.zip"
  name "RawTherapee"
  desc "RAW photo processor"
  homepage "https://rawtherapee.com/"

  livecheck do
    url "https://rawtherapee.com/shared/builds/mac/"
    regex(/href=.*?RawTherapee[._-]macOS.+(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :big_sur"
  container nested: "RawTherapee_macOS_12.3_Universal_#{version}_folder/RawTherapee_macOS_12.3_Universal_#{version}.dmg"

  app "RawTherapee.app"

  zap trash: "~/Library/Application Support/RawTherapee"
end
