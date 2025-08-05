cask "rawtherapee" do
  version "5.12"
  sha256 "2f284d1c023f53f0c492aecc3f7635d6b7807ef22d5413ee55715d81e81fe688"

  url "https://rawtherapee.com/shared/builds/mac/RawTherapee_macOS_15.4_Universal_#{version}.zip"
  name "RawTherapee"
  desc "RAW photo processor"
  homepage "https://rawtherapee.com/"

  livecheck do
    url "https://rawtherapee.com/shared/builds/mac/"
    regex(/href=.*?RawTherapee[._-]macOS.+(\d+(?:\.\d+)+)\.zip/i)
  end



  depends_on macos: ">= :big_sur"
  container nested: "RawTherapee_macOS_15.4_Universal_#{version}_folder/RawTherapee_macOS_15.4_Universal_#{version}.dmg"

  app "RawTherapee.app"

  zap trash: "~/Library/Application Support/RawTherapee"
end
