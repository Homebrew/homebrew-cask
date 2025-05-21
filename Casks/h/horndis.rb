cask "horndis" do
  version "9.2"
  sha256 "15f5c6cbe14e5c0f11bf27172dfbcdf3b753122d128807d6bad94c8f4c2b71e1"

  url "https://github.com/jwise/HoRNDIS/releases/download/rel#{version}/HoRNDIS-#{version}.pkg"
  name "HoRNDIS"
  desc "Android USB tethering driver"
  homepage "https://github.com/jwise/HoRNDIS"

  disable! date: "2024-09-08", because: :unmaintained

  depends_on macos: [
    :el_capitan,
    :sierra,
    :high_sierra,
    :mojave,
  ]

  pkg "HoRNDIS-#{version}.pkg"

  uninstall kext:    "com.joshuawise.kexts.HoRNDIS",
            pkgutil: "com.joshuawise.*"
end
