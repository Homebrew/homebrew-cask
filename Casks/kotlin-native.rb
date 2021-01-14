cask "kotlin-native" do
  version "1.4.21"
  sha256 "f3a65ea070cbfca89497a14340f1530d1ec37875efc8be9a972b6a7aefde29c0"

  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-prebuilt-macos-#{version}.tar.gz",
      verified: "github.com/JetBrains/kotlin/"
  appcast "https://github.com/JetBrains/kotlin-native/releases.atom"
  name "Kotlin Native"
  desc "LLVM backend for Kotlin"
  homepage "https://kotlinlang.org/docs/reference/native-overview.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with formula: "kotlin"

  binary "kotlin-native-macos-#{version}/bin/cinterop"
  binary "kotlin-native-macos-#{version}/bin/jsinterop"
  binary "kotlin-native-macos-#{version}/bin/klib"
  binary "kotlin-native-macos-#{version}/bin/konan-lldb"
  binary "kotlin-native-macos-#{version}/bin/konanc"
  binary "kotlin-native-macos-#{version}/bin/kotlinc"
  binary "kotlin-native-macos-#{version}/bin/kotlinc-native"
  binary "kotlin-native-macos-#{version}/bin/run_konan"

  caveats do
    depends_on_java "6+"
  end
end
