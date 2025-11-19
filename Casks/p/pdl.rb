cask "pdl" do
  version "0.9.1"
  sha256 "7ab2bcfe633c23656395e35d80e053933abe5adcf95ee7ecfcd37de6e05d6adc"

  url "https://github.com/IBM/prompt-declaration-language/releases/download/v#{version}/PDL_#{version}_universal.dmg",
      verified: "github.com/IBM/prompt-declaration-language/"
  name "PDL"
  desc "Declarative language for creating reliable, composable LLM prompts"
  homepage "https://ibm.github.io/prompt-declaration-language/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PDL.app"
  binary "#{appdir}/PDL.app/Contents/MacOS/PDL", target: "pdl"

  zap trash: "~/Library/Application Support/PDL"
end
