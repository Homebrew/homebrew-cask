cask "font-harmonyos-sans-sc" do
  version :latest
  sha256 :no_check

  url "https://developer.huawei.com/images/download/next/HarmonyOS-Sans.zip"
  name "HarmonyOS Sans SC"
  homepage "https://developer.huawei.com/consumer/en/doc/design-guides/font-0000001828772001"

  font "HarmonyOS Sans/HarmonyOS_SansSC/HarmonyOS_SansSC_Regular.ttf"
  font "HarmonyOS Sans/HarmonyOS_SansSC/HarmonyOS_SansSC_Thin.ttf"
  font "HarmonyOS Sans/HarmonyOS_SansSC/HarmonyOS_SansSC_Light.ttf"
  font "HarmonyOS Sans/HarmonyOS_SansSC/HarmonyOS_SansSC_Medium.ttf"
  font "HarmonyOS Sans/HarmonyOS_SansSC/HarmonyOS_SansSC_Bold.ttf"
  font "HarmonyOS Sans/HarmonyOS_SansSC/HarmonyOS_SansSC_Semibold.ttf"
  font "HarmonyOS Sans/HarmonyOS_SansSC/HarmonyOS_SansSC_Black.ttf"

  # No zap stanza required
end
