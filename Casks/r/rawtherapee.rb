cask "rawtherapee" do
  version "5.9"
  sha256 "d0812e94e8297449ca6bb4136d8a96951540dc14e8e5d98bdac152f7f082d47f"

  url "https://www.rawtherapee.com/shared/builds/mac/RawTherapee_macOS_11.7_Universal_#{version}.zip"
  name "RawTherapee"
  desc "RAW photo processor"
  homepage "https://rawtherapee.com/"

  livecheck do
    url "https://rawtherapee.com/shared/builds/mac/"
    regex(/href=.*?RawTherapee[._-]macOS.+(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :big_sur"
  container nested: "RawTherapee_macOS_11.7_Universal_#{version}_folder/RawTherapee_macOS_11.7_Universal_#{version}.dmg"

  app "RawTherapee.app"

  zap trash: "~/Library/Application Support/RawTherapee"
end
