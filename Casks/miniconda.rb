cask "miniconda" do
  version "py38_4.8.3"
  sha256 "9b9a353fadab6aa82ac0337c367c23ef842f97868dcbb2ff25ec3aa463afc871"

  # repo.anaconda.com/miniconda/ was verified as official when first introduced to the cask
  url "https://repo.anaconda.com/miniconda/Miniconda3-#{version}-MacOSX-x86_64.sh"
  name "Continuum Analytics Miniconda"
  homepage "https://conda.io/miniconda.html"

  auto_updates true
  container type: :naked

  installer script: {
    executable: "Miniconda3-#{version}-MacOSX-x86_64.sh",
    args:       ["-b", "-p", "#{caskroom_path}/base"],
  }
  binary "#{caskroom_path}/base/condabin/conda"

  uninstall delete: "#{caskroom_path}/base"

  zap trash: [
    "~/.condarc",
    "~/.conda",
    "~/.continuum",
  ]

  caveats <<~EOS
    Please run the following to setup your shell:
      conda init "$(basename "${SHELL}")"
  EOS
end
