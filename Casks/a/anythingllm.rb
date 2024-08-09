cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.6.2"
  sha256 arm:   "c9452d1eb840297685dc2aa44f9c9850b622474f06ccf46125fa9e3048175b75",
         intel: "e00451494ebd04334177249ce4a9a9d450e6113c10d3661c2003121d68e1d60d"

  url "https://s3-us-west-1.amazonaws.com/public.useanything.com/latest/AnythingLLMDesktop#{arch}.dmg",
      verified: "s3-us-west-1.amazonaws.com/public.useanything.com/"
  name "AnythingLLM"
  desc "Private desktop AI chat application"
  homepage "https://useanything.com/"

  livecheck do
    url "https://s3-us-west-1.amazonaws.com/public.useanything.com/latest/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "AnythingLLM.app"

  zap trash: "~/Library/Application Support/anythingllm-desktop"
end
