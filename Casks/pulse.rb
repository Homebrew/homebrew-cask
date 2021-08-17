cask "pulse" do
  version "0.15.3"
  sha256 "cfba399c46f90d11402a04137ff968ad7daf465450b5c7a3607f0f57d17904ad"

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
