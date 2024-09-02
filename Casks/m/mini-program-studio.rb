cask "mini-program-studio" do
  arch arm: "-arm64", intel: "-x64"

  version "3.9.16"
  sha256 arm:   "78c11bbfac0588d2ac3e6d8954f5260f8ab032a8335e4771ac0c4271ccefb3bf",
         intel: "f95869b1fe5be6c8a8f1663b99c76667d832c185299a17e74c02978433fc10fa"

  url "https://alipay-miniapp-public.oss-cn-hangzhou.aliyuncs.com/mfupload/MiniProgramStudio-#{version}#{arch}.dmg",
      verified: "alipay-miniapp-public.oss-cn-hangzhou.aliyuncs.com/mfupload/"
  name "Mini Program Studio"
  name "小程序开发者工具"
  desc "IDE for the development of Alipay applets"
  homepage "https://opendocs.alipay.com/mini/ide"

  # The download page (https://opendocs.alipay.com/mini/ide/download) is
  # rendered using JavaScript. The URL below returns JSON data that contains
  # the HTML for the release information, so we can match within that.
  livecheck do
    url "https://opendocs.alipay.com/api/content/006l6m"
    regex(/MiniProgramStudio[._-](\d+(?:\.\d+)*)/i)
  end

  app "小程序开发者工具.app"

  zap trash: [
    "~/Library/Application Support/小程序开发者工具",
    "~/Library/Preferences/com.ant.miniprogram.plist",
    "~/Library/Saved Application State/com.ant.miniprogram.savedState",
  ]
end
