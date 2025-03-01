cask "pdl" do
  version "0.4.1"
  sha256 "846fe1184f287dea5ef79d7851dbd6a4cfea62f7cd2ba7ca91c6f8102e47e69e"

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
