cask "mricron" do
  version "1.0.20201102"
  sha256 :no_check

  url "https://www.nitrc.org/frs/download.php/12005/MRIcron_macOS_Universal_X86_ARM.dmg?i_agree=1&download_now=1"
  name "MRIcron"
  desc "NIfTI format image viewer"
  homepage "https://www.nitrc.org/projects/mricron/"

  app "MRIcron.app"
  binary "#{appdir}/MRIcron.app/Contents/Resources/bet"
  binary "#{appdir}/MRIcron.app/Contents/Resources/dcm2niix"
  
  zap trash: "~/Library/Saved Application State/com.mricro.MRIcron.savedState"
end
