cask "pdl" do
  version "0.7.0"
  sha256 "a6ebbd09e093948ab51d5e5f88c8eb4469b167aa60fdaf7dc3a15cfd7aef26d7"

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
