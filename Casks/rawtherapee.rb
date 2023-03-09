cask "rawtherapee" do
  version "5.9"
  sha256 "d0812e94e8297449ca6bb4136d8a96951540dc14e8e5d98bdac152f7f082d47f"

  url "https://www.rawtherapee.com/shared/builds/mac/RawTherapee_macOS_11.7_Universal_5.9.zip"
  name "RawTherapee"
  desc "RAW photo processer"
  homepage "https://rawtherapee.com/"

  livecheck do
    url "https://rawtherapee.com/shared/builds/mac/"
    regex(/href=.*?RawTherapee_\w+[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "RawTherapee.app"

  zap trash: "~/Library/Application Support/RawTherapee"
end
