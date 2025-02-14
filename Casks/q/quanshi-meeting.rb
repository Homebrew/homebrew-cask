cask "quanshi-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "6.26.25011701"
    sha256 "f20f091a833ba996c4e4aafd84cde1a1070181c4f33e269f546a2c7410985e9f"
        url "https://dle.quanshi.com/onemeeting/download/auto/mac/x86_64/G-Net_MeetNow_6.26.25011701.pkg"
        pkg "G-Net_MeetNow_6.26.25011701.pkg"
  else
    version "6.26.25011701"
    sha256 "be040b0d9d8f951a26173bcee7db0c24f820b77b194c00e7ee6f393cd208b215"
        url "https://dle.quanshi.com/onemeeting/download/auto/mac/arm64/G-Net_MeetNow_arm64_6.26.25011701.pkg"
        pkg "G-Net_MeetNow_arm64_6.26.25011701.pkg"
  end

  name "Quanshi Meeting"
  name "全时云会议"
  desc "Cloud video conferencing"
  homepage "https://www.quanshi.com"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
        skip "No version information available"
  end

  auto_updates true

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
