cask "recaf" do
  version "2.21.11"
  sha256 "d5b3b481fdd43e81686b236b986242393d53dd9e623223af160e4114e617a4ea"

  url "https://github.com/Col-E/Recaf/releases/download/#{version}/recaf-#{version}-J8-jar-with-dependencies.jar",
      verified: "github.com/Col-E/Recaf/"
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
