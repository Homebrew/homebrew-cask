cask "rawtherapee" do
  version "5.9"
  sha256 "d0812e94e8297449ca6bb4136d8a96951540dc14e8e5d98bdac152f7f082d47f"

  url "https://www.rawtherapee.com/shared/builds/mac/RawTherapee_macOS_11.7_Universal_5.9.zip"
  name "RawTherapee"
  desc "RAW photo processer"
  homepage "https://rawtherapee.com/"

  container nested: "RawTherapee_macOS_11.7_Universal_5.9_folder/RawTherapee_macOS_11.7_Universal_5.9.dmg"

  app "RawTherapee.app"

  zap trash: "~/Library/Application Support/RawTherapee"
end
