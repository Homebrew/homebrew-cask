cask "pdl" do
  version "0.6.2"
  sha256 "45e982b7a3efa1c55b75a10f70df6af6da28fb0b7f5176a7adc4919135697369"

  url "https://github.com/IBM/prompt-declaration-language/releases/download/v#{version}/PDL_#{version}_universal.dmg",
      verified: "github.com/IBM/prompt-declaration-language/"
  name "PDL"
  desc "Declarative language for creating reliable, composable LLM prompts"
  homepage "https://ibm.github.io/prompt-declaration-language/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "PDL.app"
  binary "#{appdir}/PDL.app/Contents/MacOS/PDL", target: "pdl"

  zap trash: "~/Library/Application Support/PDL"
end
