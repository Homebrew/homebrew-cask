cask "deveco-studio" do
  arch arm: "-arm"
  arch_suffix = on_arch_conditional arm: "-aarch64"

  version "3.1.0.501"

  on_arm do
    sha256 "f3e77ba60e596c9e49cd5fc3ab67f3f944efd235f2fa7b298b501abcfc668f04"

    url "https://contentcenter-vali-drcn.dbankcdn.cn/pvt_2/DeveloperAlliance_package_901_9/b7/v3/ONY_R_ihQ6-6k8Fnu8Kl2Q/devecostudio-mac#{arch}-#{version}.zip?HW-CC-KV=V1&HW-CC-Date=20230621T074841Z&HW-CC-Expire=315360000&HW-CC-Sign=FE223D9B6AB5C722096FF8C7BA574555E63638374A3D3543C72D7D9E869AB934",
        verified: "contentcenter-vali-drcn.dbankcdn.cn/"
  end
  on_intel do
    sha256 "1a380b8b4a172b0f00af476b3bdcd83ee2dab24937c00b72d20d9121db99f5b7"

    url "https://contentcenter-vali-drcn.dbankcdn.cn/pvt_2/DeveloperAlliance_package_901_9/a3/v3/8W9LiYb8RkqhmvclsZlaTA/devecostudio-mac-#{version}.zip?HW-CC-KV=V1&HW-CC-Date=20230621T074204Z&HW-CC-Expire=315360000&HW-CC-Sign=C41DAC65883B9E09594C31B333704D2ABA325E000648BED86496288182E4A565",
        verified: "contentcenter-vali-drcn.dbankcdn.cn/"
  end

  name "DevEco Studio"
  desc "Development platform for HarmonyOS and OpenHarmony"
  homepage "https://developer.huawei.com/consumer/cn/"

  livecheck do
    url "https://developer.huawei.com/consumer/cn/deveco-studio/"
    regex(/devecostudio[._-]mac#{arch}[._-](\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :catalina"
  container nested: "devecostudio-mac#{arch}-#{version}/deveco-studio-#{version}#{arch_suffix}.dmg"

  app "DevEco-Studio.app"

  uninstall quit: "com.huawei.devecostudio.ds"

  zap trash: [
    "~/Library/Preferences/com.huawei.devecostudio.ds.plist",
    "~/Library/Saved Application State/com.huawei.devecostudio.ds.savedState",
  ]
end
