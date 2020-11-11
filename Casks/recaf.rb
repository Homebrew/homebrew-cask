cask "recaf" do
  version "2.12.0"
  sha256 "0d79ffc07b09da3683168097836803c19da987ab802a77cc17231ee0c9bd4dbf"

  # github.com/Col-E/Recaf/ was verified as official when first introduced to the cask
  url "https://github.com/Col-E/Recaf/releases/download/#{version}/recaf-#{version}-J8-jar-with-dependencies.jar"
  appcast "https://github.com/Col-E/Recaf/releases.atom"
  name "Recaf"
  desc "Java bytecode editor"
  homepage "https://www.coley.software/Recaf"

  auto_updates true
  container type: :naked

  # Renamed for clarity: jar file name is overly complex
  app "recaf-#{version}-J8-jar-with-dependencies.jar", target: "Recaf.jar"

  zap trash: "~/Library/Preferences/Recaf"

  caveats do
    depends_on_java "8+"
  end
end
