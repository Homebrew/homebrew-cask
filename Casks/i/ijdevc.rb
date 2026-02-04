cask "ijdevc" do
  version "2025.2,252.21735.61"
  sha256 "426cbb11c4f2f739fb00f984a31f01787eb318243e3b23962bab0426179fe707"

  url "https://download.jetbrains.com/resources/intellij/dev-containers/#{version.csv.last}/intellij-devcontainers-cli.zip"
  name "IntelliJ Dev Container CLI"
  desc "This allows you to build a container from a terminal without using the IDE, open it from the IDE, and automate the Dev Container’s actions"
  homepage "https://www.jetbrains.com/ijdevc/download"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=IJDCT&latest=true&type=eap"
    strategy :json do |json|
      json["IJDCT"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  binary "ijdevc/ijdevc"

  # No zap stanza required

  caveats do
    depends_on_java "17+"
  end
end
