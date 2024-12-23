cask "ayugram-desktop" do
  version "5.8.3"

  on_intel do
    sha256 "03df9920762d5ce145368e341a23e694a623589ea2be073dc2cac06769a31c0b"

    on_arm do
      sha256 "45fafd79cf74ac82ad408849cdb65a7a2b4cdea26351e1d20dde49a8f58f9693"
      url "https://huggingface.co/loxtera/ayu-builds-temp/resolve/main/AyuGram_arm64.dmg?download=true"
    end
    url "https://huggingface.co/loxtera/ayu-builds-temp/resolve/main/AyuGram_x86_64.dmg?download=true"
  end

  name "AyuGram Desktop"
  desc "Is a Telegram client with ghost mode and message history"
  homepage "https://github.com/AyuGram/AyuGramDesktop"

  depends_on macos: ">= :sierra"

  app "AyuGram.app", target: "AyuGram Desktop.app"

  zap trash: "~/Library/Application Support/AyuGram Desktop"
end
