cask "font-epilogue" do
  version "2.112"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/epilogue"
  name "Epilogue"
  homepage "https://fonts.google.com/specimen/Epilogue"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Epilogue",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Epilogue-Italic[wght].ttf"
  font "Epilogue[wght].ttf"

  # No zap stanza required
end
