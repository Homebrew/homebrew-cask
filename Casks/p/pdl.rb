cask "pdl" do
  version "0.9.0"
  sha256 "4c3bbbb7504e9e4ee2e5e776017f6e0dbf70c7791cee34cdfd9ff20291ae37e6"

  url "https://github.com/IBM/prompt-declaration-language/releases/download/v#{version}/PDL_#{version}_universal_darwin.dmg",
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
