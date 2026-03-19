cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.5"
  sha256 arm:   "95e3d540cff943f0dcbd1f8a4c149bac46b4e49d929490a891aa28eac7ed93b0",
         intel: "9ae0eb828cf7c93098b322abbf07b98fc9aeb2d2a3722a69061351aed620e9d3"

  url "https://github.com/dongdongbh/Mindwtr/releases/download/v#{version}/mindwtr_#{version}_#{arch}.dmg"
  name "Mindwtr"
  desc "Local-first GTD productivity tool"
  homepage "https://github.com/dongdongbh/Mindwtr"

  app "Mindwtr.app"

  zap trash: [
    "~/Library/Application Support/mindwtr",
    "~/Library/Application Support/tech.dongdongbh.mindwtr",
    "~/Library/Preferences/tech.dongdongbh.mindwtr.plist",
    "~/Library/Saved Application State/tech.dongdongbh.mindwtr.savedState",
  ]
end
