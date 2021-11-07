cask "pulse" do
  version "0.16.0"
  sha256 "8afd649c5617bdd17fb602c3b0626f500d2f10180b8d492a697b5b4f08c45155"

  url "https://github.com/kean/Pulse/releases/download/#{version}/Pulse.app.zip",
      verified: "github.com/kean/Pulse/"
  name "Pulse"
  desc "Logger and network inspector"
  homepage "https://kean.blog/pulse/home"

  livecheck do
    url "https://github.com/kean/Pulse/releases/"
    strategy :page_match
    regex(%r{(\d+(?:\.\d+)*)/Pulse\.app\.zip}i)
  end

  app "Pulse.app"

  zap trash: [
    "~/Library/Application Scripts/com.github.kean.pulse",
    "~/Library/Containers/com.github.kean.pulse",
  ]
end
