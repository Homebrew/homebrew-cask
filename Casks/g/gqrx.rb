cask "gqrx" do
  os macos: "dmg", linux: "AppImage"

  version "2.17.7"

  on_ventura :or_older do
    arch arm: "x86_64", intel: "x86_64"

    sha256 "f3743ac9ba3176f38522d90a7aa9cdab26f1c1d374217fe147c43363a1ced63d"

    caveats do
      requires_rosetta
    end
  end
  on_sonoma :or_newer do
    arch arm: "arm64", intel: "x86_64"

    sha256 arm:   "772a826fd47f4deb099be8fe9204ab76ba7d234293a4bb8fb93003c55d4f4976",
           intel: "f3743ac9ba3176f38522d90a7aa9cdab26f1c1d374217fe147c43363a1ced63d"
  end
  on_macos do
    depends_on macos: :ventura

    app "Gqrx.app"
    command_wrapper "gqrx",
                    executable: "#{appdir}/Gqrx.app/Contents/MacOS/gqrx"

    uninstall quit: "dk.gqrx.gqrx"
  end
  on_linux do
    arch intel: "x86_64"

    sha256 "fc63ff4a83d89ba388938bd840c808a0b48d8eeee91442f7a80d9f4a763986af"

    depends_on arch: :x86_64

    app_image "Gqrx-#{version}-#{arch}.AppImage", target: "Gqrx.AppImage"
  end

  url "https://github.com/gqrx-sdr/gqrx/releases/download/v#{version}/Gqrx-#{version}-#{arch}.#{os}"
  name "Gqrx"
  desc "Software-defined radio receiver powered by GNU Radio and Qt"
  homepage "https://www.gqrx.dk/"

  zap trash: "~/.config/gqrx"
end
