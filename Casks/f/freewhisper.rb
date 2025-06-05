cask "freewhisper" do
    version "0.0.6"
    sha256 "da42224ee30b20e528ff8ef728e768dee4879f173d7004c6ead2274140569269"
  
    url "https://github.com/furkanksl/FreeWhisper/releases/download/#{version}/FreeWhisper.dmg"
    name "FreeWhisper"
    desc "Open-source speech recognition app powered by OpenAI's Whisper"
    homepage "https://github.com/furkanksl/FreeWhisper"
  
    app "FreeWhisper.app"

    depends_on macos: ">= :sonoma"
  
    zap trash: [
      "~/Library/Application Support/FreeWhisper",
      "~/Library/Caches/com.furkanksl.FreeWhisper",
      "~/Library/Preferences/com.furkanksl.FreeWhisper.plist",
    ]
  end  