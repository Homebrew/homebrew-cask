cask "intel-haxm" do
  version "7.6.6"
  sha256 "ba2ecae32acc4d635bf2b8edc2dffc0679076e0a74a707597b53291aa0fa4263"

  url "https://github.com/intel/haxm/releases/download/v#{version}/haxm-macosx_v#{version.dots_to_underscores}.zip",
      verified: "github.com/intel/haxm/"
  name "Intel HAXM"
  homepage "https://software.intel.com/en-us/android/articles/intel-hardware-accelerated-execution-manager"

  depends_on macos: ">= :yosemite"

  installer script: {
    executable: "silent_install.sh",
    sudo:       true,
  }

  uninstall pkgutil: "com.intel.kext.haxm.*",
            script:  {
              sudo:         true,
              must_succeed: true,
              executable:   "silent_install.sh",
              args:         ["-u"],
            }

  caveats do
    license "https://software.intel.com/en-us/android/articles/intel-hardware-accelerated-execution-manager-end-user-license-agreement-macosx"
  end
end
