cask "intel-haxm" do
  version "7.7.0"
  sha256 "d3fb74ca55e5312fc1c10b850c46689ac723572453c1bb3ed3f47680c7f504b7"

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
