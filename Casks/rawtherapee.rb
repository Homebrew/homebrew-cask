cask "rawtherapee" do
  version "5.9"
  sha256 :no_check

  url "https://www.rawtherapee.com/shared/builds/mac/RawTherapee_macOS_11.7_Universal_5.9.zip"
  name "RawTherapee"
  desc "RAW photo processer"
  homepage "https://rawtherapee.com/"

  container nested: "RawTherapee_macOS_11.7_Universal_5.9_folder/RawTherapee_macOS_11.7_Universal_5.9.dmg"

  app "RawTherapee.app"

  zap trash: "~/Library/Application Support/RawTherapee"
end
