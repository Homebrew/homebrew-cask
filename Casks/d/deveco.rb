cask "deveco" do
  version "3.1.0.501"

  on_arm do
    sha256 "f3e77ba60e596c9e49cd5fc3ab67f3f944efd235f2fa7b298b501abcfc668f04"

    url "https://contentcenter-vali-drcn.dbankcdn.cn/pvt_2/DeveloperAlliance_package_901_9/b7/v3/ONY_R_ihQ6-6k8Fnu8Kl2Q/devecostudio-mac-arm-#{version}.zip?HW-CC-KV=V1&HW-CC-Date=20230621T074841Z&HW-CC-Expire=315360000&HW-CC-Sign=FE223D9B6AB5C722096FF8C7BA574555E63638374A3D3543C72D7D9E869AB934",
        verified: "contentcenter-vali-drcn.dbankcdn.cn/"

    container nested: "devecostudio-mac-arm-#{version}/deveco-studio-#{version}-aarch64.dmg"
  end
  on_intel do
    sha256 "1a380b8b4a172b0f00af476b3bdcd83ee2dab24937c00b72d20d9121db99f5b7"

    url "https://contentcenter-vali-drcn.dbankcdn.cn/pvt_2/DeveloperAlliance_package_901_9/a3/v3/8W9LiYb8RkqhmvclsZlaTA/devecostudio-mac-#{version}.zip?HW-CC-KV=V1&HW-CC-Date=20230621T074204Z&HW-CC-Expire=315360000&HW-CC-Sign=C41DAC65883B9E09594C31B333704D2ABA325E000648BED86496288182E4A565",
        verified: "contentcenter-vali-drcn.dbankcdn.cn/"

    container nested: "devecostudio-mac-#{version}/deveco-studio-#{version}.dmg"
  end

  name "DevEco Studio"
  desc "Development platform for HarmonyOS and OpenHarmony"
  homepage "https://developer.harmonyos.com/"

  livecheck do
    url "https://developer.harmonyos.com/cn/develop/deveco-studio#download"
    regex(/devecostudio[._-]mac[._-]arm[._-](\d+(?:\.\d+)*)\.zip/i)
  end

  app "DevEco-Studio.app"

  uninstall quit: "com.huawei.devecostudio.ds"

  zap trash: [
    "~/Library/Saved Application State/com.huawei.devecostudio.ds.savedState",
    "~/Library/Preferences/com.huawei.devecostudio.ds.plist",
  ]
end
