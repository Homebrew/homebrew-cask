cask "anythingllm" do
  arch arm: "-Silicon"

  version "1.6.4"
  sha256 arm:   "59b892fb4606bc50f28f5ee026436444f9d91d9ac2871b6affa2b8b4b0750609",
         intel: "4b2865f1e6211044908bf2311e1a29e22b7a20dad730ca3aae6945926bc78962"

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
