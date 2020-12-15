cask "recaf" do
  version "2.16.0"
  sha256 "04cdc31041cd65d2f918a9e3fc9aca8a9c21f3a4d020b5ce2115da7a39e1185c"

  url "https://github.com/Col-E/Recaf/releases/download/#{version}/recaf-#{version}-J8-jar-with-dependencies.jar",
      verified: "github.com/Col-E/Recaf/"
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
