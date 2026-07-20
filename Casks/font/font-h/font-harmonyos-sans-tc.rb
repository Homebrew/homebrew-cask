cask "font-harmonyos-sans-tc" do
  version :latest
  sha256 :no_check

  url "https://developer.huawei.com/images/download/next/HarmonyOS-Sans.zip"
  name "HarmonyOS Sans TC"
  homepage "https://developer.huawei.com/consumer/en/doc/design-guides/font-0000001828772001"

  font "HarmonyOS Sans/HarmonyOS_SansTC/HarmonyOS_SansTC_Regular.ttf"
  font "HarmonyOS Sans/HarmonyOS_SansTC/HarmonyOS_SansTC_Thin.ttf"
  font "HarmonyOS Sans/HarmonyOS_SansTC/HarmonyOS_SansTC_Light.ttf"
  font "HarmonyOS Sans/HarmonyOS_SansTC/HarmonyOS_SansTC_Medium.ttf"
  font "HarmonyOS Sans/HarmonyOS_SansTC/HarmonyOS_SansTC_Bold.ttf"
  font "HarmonyOS Sans/HarmonyOS_SansTC/HarmonyOS_SansTC_Semibold.ttf"
  font "HarmonyOS Sans/HarmonyOS_SansTC/HarmonyOS_SansTC_Black.ttf"

  # No zap stanza required
end
