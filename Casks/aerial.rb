cask "aerial" do
  version "2.0.7"
  sha256 "c6cf676d5aabb10067ecd10437358a3f1e50d1393ae87242d0a835b0e50fc1d4"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast "https://github.com/JohnCoates/Aerial/releases.atom"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
