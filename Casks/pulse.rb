cask "pulse" do
  version "0.16.0"
  sha256 "8afd649c5617bdd17fb602c3b0626f500d2f10180b8d492a697b5b4f08c45155"

  url "https://github.com/kean/Pulse/releases/download/#{version}/Pulse.app.zip",
      verified: "github.com/kean/Pulse/"
  name "Pulse"
  desc "Logger and Network Inspector"
  homepage "https://kean.blog/pulse/home"

  app "Pulse.app"

  zap trash: [
    "~/Library/Application Scripts/com.github.kean.pulse",
    "~/Library/Containers/com.github.kean.pulse",
  ]
end
