cask "quanshi-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  version "6.26.25011701"

  if Hardware::CPU.intel?
    sha256 "f20f091a833ba996c4e4aafd84cde1a1070181c4f33e269f546a2c7410985e9f"
  else
    sha256 "be040b0d9d8f951a26173bcee7db0c24f820b77b194c00e7ee6f393cd208b215"
  end

  url "https://dle.quanshi.com/onemeeting/download/auto/mac/#{version}/#{arch}/G-Net_MeetNow.pkg"
  name "Quanshi Meeting"
  name "全时云会议"
  desc "Cloud video conferencing"
  homepage "https://www.quanshi.com"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
        skip "No version information available"
  end

  auto_updates false

  pkg "G-Net_MeetNow.pkg"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end