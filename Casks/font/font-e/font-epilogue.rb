cask "font-epilogue" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/epilogue"
  name "Epilogue"
  homepage "https://fonts.google.com/specimen/Epilogue"

  font "Epilogue-Italic[wght].ttf"
  font "Epilogue[wght].ttf"

  # No zap stanza required
end
